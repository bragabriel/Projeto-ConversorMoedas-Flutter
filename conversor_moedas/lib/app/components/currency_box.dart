import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CurrencyBox extends StatelessWidget {
  const CurrencyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex: 1,
                      child: SizedBox(
                        height: 56,
                        child: DropdownButton(
                          iconEnabledColor: Colors.amber,
                            isExpanded: true,
                            underline:
                                Container(height: 1, color: Colors.black),
                            items: [
                              DropdownMenuItem(
                                child: Text(
                                  'Real',
                                  style: TextStyle(color: Colors.yellow),
                                      overflow: TextOverflow.ellipsis,
                                ),
                                value: "Real",
                                
                              ),
                              DropdownMenuItem(
                                child: Text(
                                  'Dolar',
                                overflow: TextOverflow.ellipsis,
                                  ),
                                value: "Dolar",
                                
                              ),
                            ],
                            onChanged: (value) {}),
                      )),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.amber),
                        ),
                      ),
                    ),
                  ),
                ],
              );
  }
}