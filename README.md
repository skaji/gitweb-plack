# Gitweb on Plack

[gitweb][] on plack!

## How to install

```sh
% git clone --recursive git://github.com/ks0608/gitweb-plack.git
% cd gitweb-plack

# modify $projectroot for your environment in gitweb_config.perl
% vim gitweb_config.perl

# If you want to install modules globally, try:
% cpanm --installdeps .
% plackup                # Access http://localhost:5000

# Or locally, try:
% carton install
% carton exec -- plackup # Access http://localhost:5000
```

[gitweb]: https://github.com/git/git/tree/master/gitweb
