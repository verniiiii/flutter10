import 'dart:ui';

import 'package:mobx/mobx.dart';

part 'onboarding_store.g.dart';

class OnboardingStore = _OnboardingStore with _$OnboardingStore;

abstract class _OnboardingStore with Store {
  @observable
  int currentPageIndex = 0;

  @observable
  bool isCompleted = false;

  final List<OnboardingPage> pages = [
    OnboardingPage(
      title: 'Взгляните на свои финансы по-новому',
      subtitle: 'Простое управление бюджетом',
      description: 'Отслеживайте все доходы и расходы в одном месте. Полный контроль над вашими деньгами.',
      icon: '💰',
      gradientColors: [Color(0xFF667eea), Color(0xFF764ba2)],
    ),
    OnboardingPage(
      title: 'Умная аналитика',
      subtitle: 'Понимайте свои привычки',
      description: 'Наглядные графики и отчёты покажут, куда уходят деньги и как оптимизировать расходы.',
      icon: '📊',
      gradientColors: [Color(0xFFf093fb), Color(0xFFf5576c)],
    ),
    OnboardingPage(
      title: 'Достигайте целей',
      subtitle: 'Мечты становятся реальностью',
      description: 'Ставьте финансовые цели и отслеживайте прогресс. Мы поможем вам накопить на важное.',
      icon: '🎯',
      gradientColors: [Color(0xFF4facfe), Color(0xFF00f2fe)],
    ),
    OnboardingPage(
      title: 'Все карты под контролем',
      subtitle: 'Удобное управление',
      description: 'Добавляйте все ваши карты, отслеживайте балансы и получайте умные уведомления.',
      icon: '💳',
      gradientColors: [Color(0xFF43e97b), Color(0xFF38f9d7)],
    ),
  ];

  @computed
  bool get isLastPage => currentPageIndex == pages.length - 1;

  @computed
  bool get isFirstPage => currentPageIndex == 0;

  @action
  void nextPage() {
    if (currentPageIndex < pages.length - 1) {
      currentPageIndex++;
    }
  }

  @action
  void previousPage() {
    if (currentPageIndex > 0) {
      currentPageIndex--;
    }
  }

  @action
  void completeOnboarding() {
    isCompleted = true;
  }

  @action
  void goToPage(int index) {
    if (index >= 0 && index < pages.length) {
      currentPageIndex = index;
    }
  }
}

class OnboardingPage {
  final String title;
  final String subtitle;
  final String description;
  final String icon;
  final List<Color> gradientColors;

  OnboardingPage({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.icon,
    required this.gradientColors,
  });
}