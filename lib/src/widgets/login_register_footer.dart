part of widgets;

class LoginRegisterFooter extends StatelessWidget {

  final String question;
  final String actionText;
  final GestureTapCallback action;
  const LoginRegisterFooter(
      {
        required this.question,
        required this.actionText,
        required this.action,
        Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [


        Text.rich(
            TextSpan(
                text: question,
                style: Theme.of(context).textTheme.bodyText2,
                children: [
                  TextSpan(text: actionText,
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = action
                  ),
                ]
            )
        ),



      ],
    );
  }
}