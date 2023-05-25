const spawn = require("child_process").spawn;

switch (process.platform) {
    case "win32":
        spawn('./bin/typst-x86_64-pc-windows-msvc/typst.exe', ['--font-path', 'fonts', 'watch', 'main.typ', 'exported/main.pdf', '--open'], { stdio: 'inherit' });
        break;
    case "linux":
        spawn('./bin/typst-x86_64-unknown-linux-musl/typst', ['--font-path', 'fonts', 'watch', 'main.typ', 'exported/main.pdf', '--open'], { stdio: 'inherit' });
        break;
}