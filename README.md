<p align="center">
  <a href="https://rubyonrails.org/" target="_blank" rel="noopener noreferrer">
    <img src="https://rubyonrails.org/images/rails-logo.svg" width="400">
  </a>
</p>

# Welcome to Rails

#Welcome to my app 

I made and app 9GAGclone and the name already tells you what it is. It is a clone page of a popular meme page that everone heard of. I made this app for my school project. Frontend andd backend are both in english.

##Installation

For the first installation run 

`bundle install`

`rake db:create`

`rake db:migrate`

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

When using without account you can only see posts but cant interact with them, for more options create acccount in right-up corner and easily join communities and start meme-ing with others who share the same interestes.
