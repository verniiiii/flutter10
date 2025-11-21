import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:prac10/features/auth/data/user_model.dart';
import 'package:prac10/features/motivation/data/motivation_model.dart';
import 'package:prac10/features/news/data/news_model.dart';
import 'package:prac10/features/social/data/friend_model.dart';
import 'package:prac10/features/transactions/data/transaction_model.dart';
import '../features/onboarding/data/onboarding_store.dart';

final GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  // Регистрируем общий ObservableList как синглтон (он нужен многим сторам)
  getIt.registerSingleton<ObservableList<Transaction>>(ObservableList<Transaction>());

  // Регистрируем все stores как ленивые синглтоны (создаются только при первом использовании)
  getIt.registerSingleton<ObservableList<Transaction>>(ObservableList<Transaction>());
  getIt.registerSingleton<ObservableList<OnboardingPage>>(ObservableList<OnboardingPage>());
  getIt.registerSingleton<ObservableList<User>>(ObservableList<User>());
  getIt.registerSingleton<ObservableList<Card>>(ObservableList<Card>());
  getIt.registerSingleton<ObservableList<MotivationContent>>(ObservableList<MotivationContent>());
  getIt.registerSingleton<ObservableList<NewsArticle>>(ObservableList<NewsArticle>());
  getIt.registerSingleton<ObservableList<Friend>>(ObservableList<Friend>());
}
