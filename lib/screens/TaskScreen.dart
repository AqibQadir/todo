import 'package:flutter/material.dart';
class TaskScreen extends StatelessWidget {
  Widget buildButtomSheet(BuildContext context){
    return Container(
      color: Colors.grey,
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.lightBlueAccent,
              fontSize:30.0,


            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10.0,),
            ElevatedButton(onPressed: (){}, child: Text('add'),),

          ],
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton:  FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: buildButtomSheet);
      },
      backgroundColor: Colors.lightBlueAccent,
      child: Icon(Icons.add),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 70.0,left: 30.0,right: 30.0,bottom: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:[
                CircleAvatar(child: Icon(Icons.list,
                size: 30.0,
                color: Colors.lightBlueAccent,),
                backgroundColor:Colors.white,
                radius: 30.0,),

                SizedBox(
                  height: 10.0,
                ),

                Text('Todo list',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 50.0,
                  color: Colors.white,
                ),),
                Text('12 Tasks',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),),

              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),),
              ),
              child: TasksList(),

            ),
          ),
        ],
      ),



    );
  }
}

class TasksList extends StatelessWidget {
  const TasksList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TaskTile(),
        TaskTile(),
        TaskTile(),
      ],
    );
  }
}

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('apple'),
      trailing:Checkbox(value: false,
    onChanged: (bool? value) {  },

    ),
    );
  }
}