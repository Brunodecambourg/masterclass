INSITI_URL      = 'https://www.insiti.com/'
INSITI_API_URL  = 'https://www.insiti.com/api/v1/'

POST_URL_REGEXP = /\b((?:https?:\/\/|www\d{0,3}[.]|[a-z0-9.\-]+[.][a-z]{2,4}\/?)(?:[^\s()<>]+|\(([^\s()<>]+|(\([^\s()<>]+\)))*\))+(?:\(([^\s()<>]+|(\([^\s()<>]+\)))*\)|[^\s\`!()\[\]{};:\'\".,<>?«»“”‘’]))/i
POST_LINK_REGEXP =  /<a href=[\'"]?([^\'"> ]*)[\'"]?[^>]*>(.*?)<\/a>/o
POST_CTA1_REGEXP = /(<cta1>)/
POST_CTA2_REGEXP = /(<cta2>)/