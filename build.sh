#!/bin/bash -ex

export ENVIRONMENT="$1"

gem install sass --version 3.3.4
rbenv rehash
pip install git+https://github.com/PyGithub/PyGithub.git@ba50af5
pip install "urllib3==1.22" --force-reinstall

pip install -t lib codeforlife-portal
if [ "$ENVIRONMENT" = "default" ]
then
    pip install -t lib --upgrade --no-deps aimmo==0.24.5
else
    pip install -t lib --pre --upgrade --no-deps aimmo==0.24.5
fi

python get_latest_aimmo_unity_release.py

rm -rf lib/pytz lib/pytz*.dist-info

./manage.py collectstatic --noinput