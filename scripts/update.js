const fs = require("fs");
const https = require('https');
const decompress = require("decompress");
const decompressTarxz = require("@felipecrs/decompress-tarxz");

const typst = {
    linux: {
        url: "https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz",
        file: "typst-x86_64-unknown-linux-musl.tar.xz",
        bin: "typst-x86_64-unknown-linux-musl/typst"
    },
    windows: {
        url: "https://github.com/typst/typst/releases/latest/download/typst-x86_64-pc-windows-msvc.zip",
        file: "typst-x86_64-pc-windows-msvc.zip",
        bin: "typst-x86_64-pc-windows-msvc/typst.exe"
    }
}

async function downloadFile(url, targetFile) {
    return await new Promise((resolve, reject) => {
        https.get(url, response => {
            const code = response.statusCode ?? 0;

            if (code >= 400)
                return reject(new Error(response.statusMessage));

            // handle redirects
            if (code > 300 && code < 400 && !!response.headers.location)
                return resolve(downloadFile(response.headers.location, targetFile));

            // save the file to disk
            const fileWriter = fs
                .createWriteStream(targetFile)
                .on('finish', () => resolve({}));

            response.pipe(fileWriter);
        }).on('error', error => reject(error));
    });
}

const extractZip = async (filePath, binPath, destDir) => {
    await decompress(filePath, destDir, {
        filter: file => file.path === binPath,
    });
}

const extractTarxz = async (filePath, binPath, destDir) => {
    await decompress(filePath, destDir, {
        filter: file => file.path === binPath,
        plugins: [decompressTarxz()],
    });
};

const main = async () => {
    await downloadFile(typst.windows.url, typst.windows.file);
    await extractZip(typst.windows.file, typst.windows.bin, "bin");

    await downloadFile(typst.linux.url, typst.linux.file);
    await extractTarxz(typst.linux.file, typst.linux.bin, "bin");

    // @ts-ignore
    fs.unlink(typst.linux.file, () => { });
    // @ts-ignore
    fs.unlink(typst.windows.file, () => { });
}

main();