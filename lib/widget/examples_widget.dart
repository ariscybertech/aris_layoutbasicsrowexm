import 'package:flutter/material.dart';

class ExamplesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildIcons(),
          const SizedBox(height: 16),
          buildSubject(),
          const SizedBox(height: 16),
          buildBurgers(),
        ],
      );

  Widget buildIcons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        buildBox(child: Icon(Icons.cake)),
        buildBox(child: Icon(Icons.local_drink)),
        buildBox(child: Icon(Icons.icecream)),
        buildBox(child: Icon(Icons.no_meals)),
      ],
    );
  }

  Widget buildBox({required Widget child}) => Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red.shade200,
        ),
        padding: EdgeInsets.all(8),
        child: child,
      );

  Widget buildSubject() {
    final urlChemistry =
        'https://images.unsplash.com/photo-1575503802870-45de6a6217c8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80';

    return ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: EdgeInsets.all(8),
          color: Colors.black,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  urlChemistry,
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Chemistry',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: Colors.white30,
                  width: 80,
                  height: 80,
                  child: Center(
                    child: Text(
                      '2',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }

  Widget buildBurgers() => Row(
        children: [
          Expanded(child: buildBurger()),
          const SizedBox(width: 12),
          Expanded(child: buildBurger()),
        ],
      );

  Widget buildBurger() {
    final urlBurger =
        'https://images.unsplash.com/photo-1586190848861-99aa4a171e90?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=80';

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(12),
        color: Color(0xFF010101),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(urlBurger,
                width: 200, height: 200, fit: BoxFit.contain),
            Text(
              'Beef Burger',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Onion with cheese',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            const SizedBox(height: 8),
            Text(
              '\$24.00',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
