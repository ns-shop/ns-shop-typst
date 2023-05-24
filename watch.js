const spawn = require("child_process").spawn;

switch (process.platform) {
    case "win32":
        spawn('./bin/typst.exe', ['--font-path', 'fonts', 'watch', 'main.typ', 'exported/main.pdf', '--open'], { stdio: 'inherit' });
        break;
    case "linux":
        spawn('./bin/typst', ['--font-path', 'fonts', 'watch', 'main.typ', 'exported/main.pdf', '--open'], { stdio: 'inherit' });
        break;
}