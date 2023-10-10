if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/rendisadia/BongoBondhu_Bots.git /BongoBondhu_Bots
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /BongoBondhu_Bots
fi
cd /BongoBondhu_Bots
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
