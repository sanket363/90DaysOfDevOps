fav_tools = {1:"Linux", 2:"Git", 3:"Docker", 4:"Kubernetes", 5:"Terraform", 6:"Ansible", 7:"Chef"}
print("The values of the Fav Tools are: ")
for key in fav_tools:
    
    print(fav_tools[key])

cloud_providers = ['Amazon Web Services (AWS)', 'Microsoft Azure', 'Google Cloud Platform (GCP)', 'IBM Cloud', 'Alibaba Cloud', 'Oracle Cloud']

cloud_providers.append("DigitalOcean")
cloud_providers.sort()
print("\n The sorted list of cloud providers are: ")
print(cloud_providers)