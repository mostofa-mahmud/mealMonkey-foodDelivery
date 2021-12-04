part of widgets;
class CustomTextFormField extends StatelessWidget {
  final String? labelText;

  const CustomTextFormField({
    this.labelText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        color: placeholderColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextFormField(
        style: TextStyle(color: primaryFontColor),
        decoration: InputDecoration(
          labelText: labelText,
          isCollapsed: true,
        ),
      ),
    );
  }
}