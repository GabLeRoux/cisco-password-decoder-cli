npx coffee --bare --no-header -o lib -cm src
echo "#!/usr/bin/env node" | cat - lib/command.js > /tmp/out && mv /tmp/out lib/command.js
chmod +x lib/command.js