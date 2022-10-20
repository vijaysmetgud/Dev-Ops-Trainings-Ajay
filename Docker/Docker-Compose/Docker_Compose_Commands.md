# Docker Compose Commands:-

1.  command to start docker compose yaml file
                                      
          docker-compose -f mongo.yaml  up 
    
          docker-compose up yaml_file_name

2. command to stop and remove docker container which is created through docker compose file
    
        docker-compose -f mongo.yaml  down
    
        docker-compose down yaml_file_name 

3.  command to build yaml_file 
    
        docker-compose build yaml.file_name 

4.  command to list of yaml_files
    
         docker-compose ls

5.  command to remove yaml_file
    
        docker-compose rm yaml_file

6.  command to check yaml_file
    
        docker-compose ps yaml_file 
        

