package dto;

import lombok.Data;

@Data
public class TaskDto {

        private String description;

        public static TaskDto create(String description){
            TaskDto taskDto = new TaskDto();
            taskDto.setDescription(description);
            return taskDto;
        }
    }


