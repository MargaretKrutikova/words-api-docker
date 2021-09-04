## Run everything

```shell
bash ./docker-startup.sh
```

## Run restore of prod db

```shell
docker exec -it mongodbserver_prod bash
mongorestore --port 27018 --db words-app  --collection words --verbose ./dump/words.bson
exit
```

## Mongodb dump

```shell
sudo docker exec mongodbserver_prod sh -c 'mongodump --db words-app --port 27018' > ./words-app-prod.dump
```

## Copy to local machine over ssh

```shell
scp username@ip-address:/home/.../words-app-prod.dump /path/on/local/machine
```

## View collections

```shell
sudo docker exec mongodbserver_prod sh -c 'mongo words-app --port 27018 --eval "db.getCollectionNames()"'
```

## Export collection as json

```shell
sudo docker exec mongodbserver_prod sh -c 'mongoexport --db words-app --port 27018 -c words' > words.json
```
