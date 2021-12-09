if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Pradeep1234a/EvaMaria-.git /dailyUpdates
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /DailyUpdates 
fi
cd /DailyUpdates
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
