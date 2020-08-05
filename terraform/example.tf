terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "topetuts"

    workspaces {
      name = "devopstutorial"
    }
  }
}

provider "heroku" {
  email   = "christopher_llamas10@yahoo.com"
  api_key = var.herokukey
}

resource "heroku_app" "devopstutiral" {
    name = "chok-terra-sample"
    region = "eu"

}

#resource "heroku_build" "myexistingapp" {
#    app = "chok-terra-sample"
#    source = {
#        path = "/root/SocialMap"
#    }
#}