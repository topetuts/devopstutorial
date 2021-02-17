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

resource "heroku_app" "devopstutrial" {
    name = "chok-terra-sample"
    region = "eu"

}

resource "heroku_build" "devopstutrial" {
    app = "${heroku_app.devopstutrial.id}"
    source = {
        url = "https://github.com/topetuts/devopstutorial/archive/v4.1.tar.gz"
    }
}