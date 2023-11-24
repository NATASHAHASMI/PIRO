if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/JENYFERR/PIRO /PIRO
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PIRO
fi
cd /PIRO
pip3 install -U -r requirements.txt
echo "Starting PiroAutoFilterBot...."
python3 bot.py
