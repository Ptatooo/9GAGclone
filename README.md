<p align="center">
  <a href="https://rubyonrails.org/" target="_blank" rel="noopener noreferrer">
    <img src="https://rubyonrails.org/images/rails-logo.svg" width="400">
  </a>
</p>

# Welcome to Rails

#Welcome to my app 

I made and app 9GAGclone and the name already tells you what it is. It is a clone page of a popular meme page that everone heard of. I made this app for my school project. Frontend andd backend are both in english.

Download the files and place them in a folder.

For the first installation run

bundle install

rake db:create

rake db:migrate

After this the database and all the gems should be set.

You have to create your own .env file in the root of the project

In the .env file set your variables:

POSTGRES_USER='postgres'
POSTGRES_PASSWORD='yourpassword'
POSTGRES_HOST='localhost' #localhost for development
POSTGRES_DB='yourdbname'
POSTGRES_TEST_DB='testdb'

BUCKET_NAME=s3BucketName
AWS_ACCESS_KEY_ID=AWSKey
AWS_SECRET_ACCESS_KEY=secretAccesKey

FACEBOOK_APP_ID=appID
FACEBOOK_APP_SECRET=appSecret

GOOGLE_OAUTH_CLIENT_ID=googleid.apps.googleusercontent.com
GOOGLE_OAUTH_CLIENT_SECRET=clientSecret

GITHUB_ID=yourid
GITHUB_SECRET=yourSecret

USERNAME=your_smtpusername@domain.com
PASSWORD=smtpPass
