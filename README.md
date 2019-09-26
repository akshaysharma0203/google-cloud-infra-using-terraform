# google-cloud-infra-using-terraform
understanding terraform concepts by provisioning google cloud (GCP) infra

1. Singleinstance ==> basic terraform script to create a single compute engine VM instance with default VPC and a custom firewall.

2. instancewithvariables  => terraform script with variables to create a single compute engine VM instance with default VPC and a custom firewall.

3. module_example_environment_deployment  => modular approach to create infra for dev/uat/prod environment.



# Authenticating yourself for performing action over google cloud.
1. In the GCP Console, go to the Create service account key page.
2. From the Service account list, select New service account.
3. In the Service account name field, enter a name.
4. From the Role list, select Project > Owner.
5. Click Create. A JSON file that contains your key gets downloaded to your computer.

# Setting the environment variable
  If you plan to use a service account, you need to set an environment variable.

  '''Provide authentication credentials to your application code by setting the environment variable GOOGLE_APPLICATION_CREDENTIALS. Replace   [PATH] with the file path of the JSON file that contains your service account key, and [FILE_NAME] with the filename. This variable only applies to your current shell session, so if you open a new session, set the variable again.'''


export GOOGLE_APPLICATION_CREDENTIALS="[PATH]"
For example:
export GOOGLE_APPLICATION_CREDENTIALS="/home/user/Downloads/[FILE_NAME].json"
