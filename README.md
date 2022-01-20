# grid_view_app

<h2>practice purpose flutter application</h2>

## Getting Started

This project is a starting point for a Flutter application.







## Basic Grid View UI Image
<img width="400" height = "600" src="https://raw.githubusercontent.com/Tareq23/Grid-View-App/master/images/basic%20grid%20view.PNG"/>

```dart

# GridView Widget 

GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 5,
      ),
      itemCount: _imgList.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 100,
          margin: EdgeInsets.zero,
          color: Colors.greenAccent,
          child: Image(
            image: NetworkImage(_imgList[index]),
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        );
      },

    )

```

## Staggered Grid View UI Image
<img width="400" height = "600" src="https://raw.githubusercontent.com/Tareq23/Grid-View-App/master/images/straggered%20grid%20view.PNG"/>

```dart

# MasonryGridView Widget 

MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 5,
      itemCount: _imgList.length,
      itemBuilder: (context,index){
        var _height = Random().nextInt(200) + 150;
        return Card(
          shadowColor: Colors.lightGreenAccent.withOpacity(0.7),
          elevation: (Random().nextInt(20)+10).toDouble(),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),

          ),
          child: Padding(
            padding:  EdgeInsets.all(8.0),
            child: Image(
              image: NetworkImage(_imgList[index]),
              height: _height.toDouble(),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );

```


## Sliver Grid View UI Image
<img width="400" height = "600" src="https://raw.githubusercontent.com/Tareq23/Grid-View-App/master/images/sliver%20grid%20view.PNG"/>


```dart

# SliverGrid

CustomScrollView(
      slivers: [
          SliverGrid(
              delegate: SliverChildBuilderDelegate(
                  (context,index){
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                        child: Image(
                          image: NetworkImage(_imgList[index]),
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                    );
                  },
                childCount: _imgList.length,
              ),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 7,
                mainAxisSpacing: 10,
              ),
          ),
      ],
    )

```




A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.dev/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.dev/docs/cookbook)

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
