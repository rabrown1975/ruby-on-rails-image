DISTRO=$(lsb_release -c -s)
curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
echo "deb https://deb.nodesource.com/node_12.x ${DISTRO} main" > /etc/apt/sources.list.d/nodesource.list
echo "deb-src https://deb.nodesource.com/node_12.x ${DISTRO} main" >> /etc/apt/sources.list.d/nodesource.list
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update > /dev/null
apt-get install nodejs yarn -y --no-install-recommends
rm -fR /var/lib/apt/lists/*