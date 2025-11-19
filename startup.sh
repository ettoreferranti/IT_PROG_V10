open "File IO.pdf"
rm *.txt
cp restaurants.bak restaurants.txt
git restore notebook.ipynb

docker-compose up -d
sleep 1
open http://localhost:8888/lab/tree/notebook.ipynb
echo "Waiting for the action to finish..."
read whatever
docker-compose down
