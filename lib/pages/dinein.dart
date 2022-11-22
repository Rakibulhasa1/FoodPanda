// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/pages/login_page.dart';
import 'package:http/http.dart' as http;
import 'package:dio/dio.dart';

import 'data.dart';

class DineIn extends StatefulWidget {
  const DineIn({super.key});

  @override
  State<DineIn> createState() => _DineInState();
}

class _DineInState extends State<DineIn> {
  Future<http.Response> fetchAlbum() {
    return http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Get.to(() => LoginPage());
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromRGBO(215, 19, 101, 1),
            ),
          ),
          centerTitle: false,
          backgroundColor: Colors.white,
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shop))],
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Selected Location',
                style: TextStyle(
                    color: Color.fromRGBO(215, 19, 101, 1), fontSize: 15),
              ),
              Text(
                'Gopalgonj',
                style: TextStyle(
                    color: Color.fromRGBO(215, 19, 101, 1), fontSize: 11),
              ),
            ],
          ),
        ),
        body: Center());
  }
}
