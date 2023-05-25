const fs = require("fs");
const path = require("path");

const typstLinuxUrl = "https://github.com/typst/typst/releases/latest/download/typst-x86_64-unknown-linux-musl.tar.xz";
const typstWindowsUrl = "https://github.com/typst/typst/releases/latest/download/typst-x86_64-pc-windows-msvc.zip";

async function downloadTypst(url, platform) {
    const filename = path.basename(url);
    const filePath = path.join(__dirname, filename);

    try {
        await fs.promises.remove(filePath);
    } catch (e) {
        if (e.code !== "ENOENT") {
            throw e;
        }
    }

    await fs.promises.download(url, filePath);
}

async function extractTypst(filePath, platform) {
    const archive = await fs.promises.open(filePath, "r");

    try {
        await archive.promises.extract(path.join(__dirname));
    } finally {
        await archive.close();
    }
}

async function main() {
    const platform = process.platform;

    if (platform === "linux") {
        await downloadTypst(typstLinuxUrl, platform);
        await extractTypst(typstLinuxUrl, platform);
    } else if (platform === "win32") {
        await downloadTypst(typstWindowsUrl, platform);
        await extractTypst(typstWindowsUrl, platform);
    } else {
        throw new Error(`Unsupported platform: ${platform}`);
    }
}

main();