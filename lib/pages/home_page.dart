

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_example/models/anim_model.dart';

import '../cubit/anim_cubit/anim_cubit.dart';
import '../cubit/anim_cubit/anim_state.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    fetchData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AnimCubit,AnimState>(
          builder: (context,state){
            return state.when(
                initial: ()=> Container(),
                loading: ()=>const Center(child: CircularProgressIndicator()),
                loaded: (animData){
                  return ListView.separated(
                    separatorBuilder: (_,pos)=>const Divider(),
                      itemCount: animData.length,
                      itemBuilder: (_,pos){
                        AnimModel animModel = animData[pos];
                        return ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(animModel.attributes?.coverImage?.small??''),
                          ),
                          title: Text(animModel.attributes?.canonicalTitle??""),
                          subtitle: Text(animModel.attributes?.description??"",maxLines: 2,),
                        );
                      }
                  );
                },
                error: ()=>const Center(child: Text("Something went wrong"))
            );
          }
      ),
    );
  }

  void fetchData() {
    BlocProvider.of<AnimCubit>(context).fetchAnims();
  }
}
