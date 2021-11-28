import 'package:burclar/burc_detay.dart';
import 'package:flutter/material.dart';

import 'model/burc.dart';

class BurcItem extends StatelessWidget {
  final Burc listenenBurc;
  const BurcItem({required this.listenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
          elevation: 4,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => BurcDetay(secilenBurc: listenenBurc),
                  ),
                );
              },
              leading: Image.asset("images/" + listenenBurc.burcKucukResim),
              title: Text(
                listenenBurc.burcAdi,
                style: mTextStyle.headline5,
              ),
              subtitle: Text(
                listenenBurc.burcTarihi,
                style: mTextStyle.subtitle1,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.teal,
              ),
            ),
          )),
    );
  }
}
