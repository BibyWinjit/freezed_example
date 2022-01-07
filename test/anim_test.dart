

import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_example/cubit/anim_cubit/anim_repository.dart';
import 'package:freezed_example/cubit/anim_cubit/anim_state.dart';
import 'package:freezed_example/models/api_response_model.dart';
import 'package:mocktail/mocktail.dart';
import '../lib/cubit/anim_cubit/anim_cubit.dart';


class MockAnimRepository extends Mock implements AnimRepository{
}

void main(){

  AnimRepository repository = MockAnimRepository();


  ApiResponse apiMockResponse = ApiResponse(true,data: {"data":[]});
    group('testing implementation of anim repo and anim cubit', ()  {
      AnimCubit animCubit = AnimCubit(repository);
      test('State checking', () async {
        when(()=>repository.fetchAnims()).thenAnswer((invocation) => Future.value(apiMockResponse));

        await animCubit.fetchAnims();
        // expect(animCubit.state, AnimState.loaded([]));

      });
      blocTest<AnimCubit,AnimState>('blocTest', build: ()=>animCubit, act: (bloc)=>bloc.fetchAnims(),
          expect: ()=>[
            const Initial(),
      const Loading(),const Loaded([])]);
    });
}