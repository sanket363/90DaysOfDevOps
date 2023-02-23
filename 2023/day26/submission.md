# Task-01

- Create a New Job, this time select Pipeline instead of Freestyle Project.
- Follow the Official Jenkins [Hello world example](https://www.jenkins.io/doc/pipeline/tour/hello-world/)
- Complete the example using the Declarative pipeline
- In case of any issues feel free to post on any Groups, [Discord](https://discord.gg/Q6ntmMtH) or [Telegram](https://t.me/trainwithshubham)
Ans.
pipeline:

pipeline{
    agent any
    stages
        {
            stage(testing)
            {
                steps{
                sh "echo 'Hello World!'"    
            }
            
            }
        }
    
}