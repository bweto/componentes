import 'package:componentes/src/providers/menu_provider.dart';
import 'package:componentes/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _list(),
    );
  }

  Widget _list() {
   /*  menuProvider.cargarData()
      .then((opciones){
        print('_lista');
        print(opciones);
      }); */
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(children: _listItems(snapshot.data, context),);
      
      },
    );
  }

  List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];
     data.forEach((opt) {
       final widgetTemp = ListTile(
         title: Text( opt['texto']),
         leading: getIcon(opt['icon']),
         trailing: Icon(Icons.arrow_forward, color: Colors.blue[300]),
         onTap: () {
           Navigator.pushNamed(context, opt['ruta']);
           /* final route = MaterialPageRoute(
             builder: (context) => AlertScreen() );
           Navigator.push(context, route); */
         },
       );
       opciones..add(widgetTemp)
               ..add(Divider(height: 8.0,));
     }
     );

     return opciones;
  }
  /* List<Widget> _crearItems() {
    List<Widget> lista = List<Widget>();
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista..add(tempWidget)
           ..add(Divider());
    }
    return lista;
  }

  List<Widget> _crearITemCorto() {
    return opciones.map((item) => ListTile(title: Text(item),)).toList();
  }
 */
}