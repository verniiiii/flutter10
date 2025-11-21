import 'package:mobx/mobx.dart';
import 'friend_model.dart';

part 'social_store.g.dart';

class SocialStore = _SocialStore with _$SocialStore;

abstract class _SocialStore with Store {
  @observable
  ObservableList<Friend> allContacts = ObservableList<Friend>();

  @observable
  ObservableList<Friend> appUsers = ObservableList<Friend>();

  @observable
  ObservableList<Friend> invitedContacts = ObservableList<Friend>();

  @observable
  bool isLoading = false;

  @observable
  String errorMessage = '';

  @observable
  String searchQuery = '';

  @observable
  bool showOnlyAppUsers = true;

  @computed
  bool get hasError => errorMessage.isNotEmpty;

  @computed
  List<Friend> get filteredContacts {
    final contacts = showOnlyAppUsers ? appUsers : allContacts;

    if (searchQuery.isEmpty) {
      return contacts.toList();
    }

    final query = searchQuery.toLowerCase();
    return contacts.where((friend) => friend.name.toLowerCase().contains(query)).toList();
  }

  @computed
  int get totalAppUsers => appUsers.length;

  @computed
  int get totalInvited => invitedContacts.length;

  @computed
  int get totalContacts => allContacts.length;

  _SocialStore() {
    _loadDemoData();
  }

  @action
  Future<void> _loadDemoData() async {
    isLoading = true;

    try {
      await Future.delayed(const Duration(seconds: 2));

      // Демо данные - контакты, которые используют приложение
      final demoAppUsers = [
        Friend(
          id: '1',
          name: 'Анна Петрова',
          phoneNumber: '+7 (912) 345-67-89',
          photoUrl: 'https://images.unsplash.com/photo-1494790108755-2616b612b786?w=150&h=150&fit=crop&crop=face',
          status: FriendStatus.usingApp,
          lastActive: DateTime.now().subtract(const Duration(hours: 2)),
          totalBalance: 154320.50,
          commonGoals: 3,
        ),
        Friend(
          id: '2',
          name: 'Михаил Сидоров',
          phoneNumber: '+7 (923) 456-78-90',
          photoUrl: 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=150&h=150&fit=crop&crop=face',
          status: FriendStatus.usingApp,
          lastActive: DateTime.now().subtract(const Duration(days: 1)),
          totalBalance: 89210.75,
          commonGoals: 1,
        ),
        Friend(
          id: '3',
          name: 'Елена Козлова',
          phoneNumber: '+7 (934) 567-89-01',
          photoUrl: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=150&h=150&fit=crop&crop=face',
          status: FriendStatus.usingApp,
          lastActive: DateTime.now().subtract(const Duration(hours: 5)),
          totalBalance: 234560.20,
          commonGoals: 2,
        ),
      ];

      // Демо данные - все контакты
      final demoAllContacts = [
        ...demoAppUsers,
        Friend(
          id: '4',
          name: 'Дмитрий Иванов',
          phoneNumber: '+7 (945) 678-90-12',
          status: FriendStatus.invited,
        ),
        Friend(
          id: '5',
          name: 'Ольга Смирнова',
          phoneNumber: '+7 (956) 789-01-23',
          status: FriendStatus.notInvited,
        ),
        Friend(
          id: '6',
          name: 'Сергей Кузнецов',
          phoneNumber: '+7 (967) 890-12-34',
          status: FriendStatus.notInvited,
        ),
        Friend(
          id: '7',
          name: 'Наталья Морозова',
          phoneNumber: '+7 (978) 901-23-45',
          status: FriendStatus.usingApp,
          lastActive: DateTime.now().subtract(const Duration(days: 3)),
          totalBalance: 56780.30,
          commonGoals: 0,
        ),
      ];

      // Приглашенные контакты
      final demoInvitedContacts = demoAllContacts.where((friend) =>
      friend.status == FriendStatus.invited).toList();

      // Используем ObservableList.of для создания observable списков
      appUsers = ObservableList.of(demoAppUsers);
      allContacts = ObservableList.of(demoAllContacts);
      invitedContacts = ObservableList.of(demoInvitedContacts);

    } catch (e) {
      errorMessage = 'Ошибка загрузки контактов';
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> inviteFriend(Friend friend) async {
    isLoading = true;

    try {
      await Future.delayed(const Duration(seconds: 1));

      final index = allContacts.indexWhere((f) => f.id == friend.id);
      if (index != -1) {
        final updatedFriend = friend.copyWith(status: FriendStatus.invited);
        allContacts[index] = updatedFriend;

        // Обновляем списки
        _updateFilteredLists();
      }
    } catch (e) {
      errorMessage = 'Ошибка при отправке приглашения';
    } finally {
      isLoading = false;
    }
  }

  @action
  Future<void> syncContacts() async {
    isLoading = true;
    errorMessage = '';

    try {
      await Future.delayed(const Duration(seconds: 3));
      // В реальном приложении здесь будет синхронизация с контактами телефона
    } catch (e) {
      errorMessage = 'Ошибка синхронизации контактов';
    } finally {
      isLoading = false;
    }
  }

  @action
  void setSearchQuery(String query) {
    searchQuery = query;
  }

  @action
  void toggleShowOnlyAppUsers() {
    showOnlyAppUsers = !showOnlyAppUsers;
  }

  @action
  void clearError() {
    errorMessage = '';
  }

  @action
  void _updateFilteredLists() {
    final usingAppContacts = allContacts.where((friend) => friend.status == FriendStatus.usingApp).toList();
    final invitedContactsList = allContacts.where((friend) => friend.status == FriendStatus.invited).toList();

    appUsers = ObservableList.of(usingAppContacts);
    invitedContacts = ObservableList.of(invitedContactsList);
  }
}