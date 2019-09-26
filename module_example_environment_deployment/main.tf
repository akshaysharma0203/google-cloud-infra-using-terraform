# calling any module out of 3 (prod/uat/dev)

module "dev" {
    source = "./modules/environment/dev"
}

module "uat" {
     source = "./modules/environment/uat"
}

module "prod" {
     source = "./modules/environment/prod"
}
