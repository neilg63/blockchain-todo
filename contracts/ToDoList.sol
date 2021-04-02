pragma solidity ^0.5.0;

contract ToDoList {
	uint public taskCount 0;
	
	struct Task {
		uint id;
		string content;
		bool completed;
	}

	constructor()  public {
		createTask("Buy some milk");
	}

	mapping(uint => Task) public tasks;

	function createTask(string memory _content) public {
		taskCount++;
		tasks[taskCount] = new Task(taskCount, content, false);
	}

}