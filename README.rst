Simple Flask App
================

Aplikacja Dydaktyczna wyświetlająca imię i wiadomość w różnych formatach dla zajęć
o Continuous Integration, Continuous Delivery i Continuous Deployment.

- Rozpocząnając pracę z projektem (wykorzystując virtualenv). Hermetyczne środowisko dla pojedyńczej aplikacji w python-ie:

  ::

    mkvirtualenv wsb-simple-flask-app
    pip install -r requirements.txt
    pip install -r test_requirements

- Uruchamianie applikacji:

  ::

  	# jako zwykły program
    python main.py

    # albo:
    PYTHONPATH=. FLASK_APP=hello_world flask run

- Uruchamianie testów (see: http://doc.pytest.org/en/latest/capture.html):

  ::

    PYTHONPATH=. py.test
    PYTHONPATH=. py.test  --verbose -s


- Kontynuując pracę z projektem, aktywowanie hermetycznego środowiska dla aplikacji py:

  ::

    source /usr/bin/virtualenvwrapper.sh
    workon wsb-simple-flask-app


- Integracja z TravisCI:

  ::

    ...


Pomocnicze
==========

- Instalacja python virtualenv i virtualenvwrapper:

  ::

    yum install python-pip
    pip install virtualenv
    pip install virtualenvwrapper

- Instalacja docker-a:

  ::

    yum remove docker \
        docker-common \
        container-selinux \
        docker-selinux \
        docker-engine

    yum install -y yum-utils

    yum-config-manager \
      --add-repo \
      https://download.docker.com/linux/centos/docker-ce.repo

    yum makecache fast
    yum install docker-ce
    systemctl start docker




Materiały
=========

- https://virtualenvwrapper.readthedocs.io/en/latest/

DODANE
============
Dodany monitoring do aplikacji na Statuscake.com

Instalacja wirtualnego środowiska Python
============
- Logowanie na root'a (su)
- pip install -U pip
- yum makecache fast
- yum install python-pip
- pip install virtualenv
- usuwanie wirtualnego środowiska: rm - rf /home/tester/.virtualenvs/wsb-simple-flask-app
-JAKO użytkownik:
source /usr/bin/virtualenvwrapper.sh
mkvirtualenv wsb-simple-flask-app
cd hello-world-printer-app
make deps
make run

Dopisanie zmiennych wirtualnego środowiska w Bashu
==============
- do basha dodać uruchomienie wirtualki
atom ~/.bashrc
- w Atomie
source /usr/bin/virtualenvwrapper.sh
echo "Witaj"
- w Terminalu:
bash
- Następnie uruchomienie wirtualnego środowiska w Terminalu
mkvirtualenv wsb-simple-flask-app


- pip install virtualenvwrapper
- yum install python-virtualenv
- uruchomienie wirtualnego środowiska

Tworzenie nowego brancha GIT
==============
- git init
- git branch testyselenium
- git checkout testyselenium

Testy pokrycia
==============
1. Dodanie do test_requirements pytest-cov:
echo 'pytest_cov' >> test_requirements.txt
pip install -r test_requirements.txt
2. Wywołanie py.test
PYTHONPATH=. py.test -- verbose -s --cov=.
3. generacja plików xunit
PYTHONPATH=. py.test -s --cov=. --junit-xml=test_results.xml
4. Dodanie nowegozadania do pliku Makefile
- test_cov
- test_xunit
5. Dodanie do pliku .gitignore pliki żeby GitHub ignorował pliki test_results.xml i .coverage
6. Wykorzystanie make test_xunit w .travis.yml

