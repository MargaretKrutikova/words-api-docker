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
