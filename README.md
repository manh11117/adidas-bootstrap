git init

git add .

git commit -am "first commit"

git push -u origin master

sudo snap install heroku --classic

heroku --version

heroku login

heroku keys:add

git remote rm heroku

heroku create

heroku run rails db:migrate

git push -u heroku master

rake db:reset

rake db:drop-> rake db:create-> rake db:migrate-> rake db:seed

git push -u origin master



