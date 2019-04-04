FROM node:10.15.0

WORKDIR /app

ADD package.json /app/package.json
RUN npm install

ADD . /app

ENV NODE_ENV='production'
ENV LOG_LEVEL='info'

ENV PUBLIC_SERVER_URL='https://nearmev5.quanlabs.com/parse'
ENV APP_NAME='HotSpot'

# Use random.org to generate a random string for the APP_ID and MASTER_KEY
# Example: https://www.random.org/strings/?num=10&len=10&digits=on&upperalpha=on&loweralpha=on&unique=on&format=html&rnd=new

ENV APP_ID='B1mjT61ZMr'
ENV MASTER_KEY='XNIjklovrq'

ENV MAILGUN_API_KEY='myMailgunApiKey'
ENV MAILGUN_DOMAIN='myMailgunDomain'
ENV MAILGUN_FROM_ADDRESS='QuanLabs <info@quanlabs.com>'
ENV MAILGUN_TO_ADDRESS='info@quanlabs.com'

ENV GOOGLE_MAPS_API_KEY='myGoogleMapsApiKey'

ENV PUSH_ANDROID_SENDER_ID=myAndroidSenderId
ENV PUSH_ANDROID_API_KEY='myAndroidApiKey'
ENV PUSH_IOS_BUNDLE_ID='myPackageAppId'

ENV MAX_REQUEST_SIZE='20mb'
ENV DOKKU_LETSENCRYPT_EMAIL='dev@quanlabs.com'

# Generate an encrypted password for your parse dashboard user
# https://bcrypt-generator.com/
ENV PARSE_DASHBOARD_USER='myParseDashboardUser'
ENV PARSE_DASHBOARD_PASS='myParseDashboardEncryptedPass'

