import 'package:envify_demo/config/env.dart';
import 'package:flutter/material.dart';

class EnvifyDemo extends StatelessWidget {
  const EnvifyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SelectableText.rich(
              TextSpan(
                text: 'My name is ',
                style: Theme.of(context).textTheme.headline1,
                children: const <TextSpan>[
                  TextSpan(
                      text: Secret.client_id,
                      style: TextStyle(
                        color: Colors.red,
                        decoration: TextDecoration.underline,
                      )),
                  TextSpan(text: '.')
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SelectableText.rich(
              TextSpan(
                text: 'I type ',
                style: Theme.of(context).textTheme.headline2,
                children: const <TextSpan>[
                  TextSpan(
                      text: Secret.client_secret,
                      style: TextStyle(
                        color: Colors.green,
                        decoration: TextDecoration.underline,
                      )),
                  TextSpan(
                    text: ' as my secret password.',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SelectableText.rich(
              TextSpan(
                text: 'The API Key assigned to me is ',
                style: Theme.of(context).textTheme.headline3,
                children: const <TextSpan>[
                  TextSpan(
                      text: Secret.api_key,
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      )),
                  TextSpan(text: '.')
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SelectableText.rich(
              TextSpan(
                text: "Psst! Don't Tell Anyone, ",
                style: Theme.of(context).textTheme.headline4,
                children: const <TextSpan>[
                  TextSpan(
                      text: Secret.site_key,
                      style: TextStyle(
                        color: Colors.purple,
                        decoration: TextDecoration.underline,
                      )),
                  TextSpan(text: ' is my site key.')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
