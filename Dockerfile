FROM roundcube/roundcubemail:latest

RUN set -ex; \
    apt-get update; \
    apt-get install -y --no-install-recommends \
        git \
    ; \
    \
    composer \
      --working-dir=/usr/src/roundcubemail/ \
      --prefer-dist \
      --prefer-stable \
      --update-no-dev \
      --no-interaction \
      --optimize-autoloader \
      require \
          johndoh/contextmenu \
          weird-birds/thunderbird_labels \
          roundcube/carddav \
          kitist/html5_notifier \
          roundcube/carddav \
          roundcube/customizri # \
          # kolab/calendar