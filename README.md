# Agile-Viper-Demo

# What is VIPER?
 
VIPER is a backronym for View, Interactor, Presenter, Entity and Router. It’s basically an approach that implements the Single Responsibility Principle to create a cleaner and more modular structure for your iOS project. The ideia behind this pattern is to isolate your app’s dependencies, balancing the delegation of responsibilities among the entities. This is achieved by using the the following architecture:
 
 
 
The diagram above illustrates the VIPER architecture, in which each block corresponds to an object with specific tasks, inputs and outputs. Think of these blocks as workers in an assembly line: once the worker completes its job on an object, the object is passed along to the next worker, until the product is finished.


# 1. View

The VIPER View in an iOS application is a UIViewController that contains a sub view, which can be either implemented programmatically or using the interfacer builder (IB). Its sole responsibility is to display what the Presenter tells it to, and handle the user interactions with the screen. When the user triggers any event that requires processing, the View simply delegates it to the Presenter and awaits for a response telling it what should be displayed next.

# 2. Presenter
The Presenter works like a bridge between the main parts of a VIPER module. On one way, it receives input events coming from the View and reacts to them by requesting data to the Interactor. On the other way, it receives the data structures coming from the Interactor, applies view logic over this data to prepare the content, and finally tells the View what to display.

# 3. Interactor
We can think about this object as a collection of use cases inside of a specific module. The Interactor contains all the business logic related to the entities and should be completely independent of the user interface (UI).
In our Article Visualization app, one use case example is to fetch the list of articles from the server. It’s the Interactor‘s responsibility to make the requests, handle the responses and convert them to an Entity which, in this case, is an Article object.
Once the Interactor finishes running some task, it notifies the Presenter about the result obtained. One important thing to have in mind is that the data sent to the Presenter should not implement any business logic, so the data provided by the Interactor should be clean and ready to use.

# 4. Entity
The Entity is probably the simplest element inside a VIPER structure. It encapsulates different types of data, and usually is treated as a payload among the other VIPER components. One important thing to notice is that the Entity is different from the Data Access Layer, which should be handled by the Interactor.

# 5. Router
The last and perhaps most peculiar element in the VIPER architecture is the Router, which is responsible for the navigation logic between modules, and how they should happen (e.g. defining an animation for presenting a screen, or how the transition between two screens should be done). It receives input commands from the Presenters to say what screen it should route to.
Also, the Router should be responsible for passing data from one screen to the other.
The Router should implement a protocol that defines all the navigation possibilities for a specific module. That’s a good because it enables a quick overview of all the paths an app can take by only looking at a Router‘s protocol.
Because of a limitation from the iOS framework, only ViewControllers can perform a transition between screens, so a Router must contain a reference to the module’s controller, or any of its children.

https://www.objc.io/issues/13-architecture/viper/

https://www.ckl.io/blog/ios-project-architecture-using-viper/ 

