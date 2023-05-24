const spawn = require("child_process").spawn;

switch (process.platform) {
    case "win32":
        spawn('./typst.exe', ['--font-path', 'fonts', 'watch', 'main.typ'], { stdio: 'inherit' });
        break;
    case "linux":
        spawn('./typst', ['--font-path', 'fonts', 'watch', 'main.typ'], { stdio: 'inherit' });
        break;
}