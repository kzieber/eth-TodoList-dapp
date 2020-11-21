pragma solidity ^0.5.0;

contract TodoList {
  uint public taskCount = 0;

  struct Task {
    uint id;
    string content;
    bool completed;
  }

  mapping(uint => Task) public tasks;

  event TaskCreated(
    uint id,
    string content,
    bool completed
  );

  constructor() public {
    createTask("Do your Stackathon project");
  }

  function createTask(string memory _content) public {
    taskCount ++;
    //The line below is creating a new task with the struct arguments
    tasks[taskCount] = Task(taskCount, _content, false);
    emit TaskCreated(taskCount, _content, false);
  }
}
