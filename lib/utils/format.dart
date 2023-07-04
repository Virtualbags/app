class AppFmt {
  static String tokenView(String symbol) {
    String view = symbol;
    if (symbol == 'KUSD' || symbol == 'AUSD') {
      view = 'aUSD';
    }
    return view;
  }

  static bool checkPassword(String pass) {
    var reg = RegExp(r'^(?![0-9]+$)(?![a-zA-Z]+$)[\S]{6,32}$');
    return reg.hasMatch(pass);
  }

  static String pluginNameDisplay(String pluginName) {
    return pluginName == 'statemine'
        ? 'Asset Hub KSM'
        : pluginName == 'statemint'
            ? 'Asset Hub'
            : pluginName.substring(0, 1).toUpperCase() +
                pluginName.substring(1);
  }
}
