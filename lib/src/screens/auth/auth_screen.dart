import 'package:flutter/cupertino.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color(0xFFF3F4F6),
      navigationBar: CupertinoNavigationBar(
        backgroundColor: CupertinoColors.white,
        // Убираем рамки
        border: const Border(),
        middle: Text('Авторизация'),
      ),
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            CupertinoTextField(
              placeholder: 'Логин или почта',
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
              // Заменяем стандартный стиль поля на свой
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
            ),
            // Добавляем разделительную линию между полями
            Container(
              height: 1,
              color: const Color(0xFFE0E6ED),
              margin: EdgeInsets.symmetric(horizontal: 16),
            ),
            CupertinoTextField(
              placeholder: 'Пароль',
              padding: const EdgeInsets.symmetric(vertical: 19, horizontal: 16),
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                color: const Color(0xFF4631D2),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Text(
                  'Войти',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 19,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: CupertinoButton(
                color: const Color(0xFF4631D2),
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: const Text(
                  'Зарегистрироваться',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
