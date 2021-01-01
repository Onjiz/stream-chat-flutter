import 'package:flutter/material.dart';
import 'package:stream_chat_flutter/src/stream_chat_theme.dart';
import 'package:stream_chat_flutter/src/stream_svg_icon.dart';

class OptionListTile extends StatelessWidget {
  final String title;
  final StreamSvgIcon leading;
  final Widget trailing;
  final VoidCallback onTap;
  final Color titleColor;

  OptionListTile({
    this.title,
    this.leading,
    this.trailing,
    this.onTap,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: StreamChatTheme.of(context).colorTheme.greyGainsboro,
          height: 1.0,
        ),
        Material(
          color: StreamChatTheme.of(context).colorTheme.white,
          child: Container(
            height: 63.0,
            child: InkWell(
              onTap: onTap,
              child: Row(
                children: [
                  if (leading != null)
                    Expanded(
                      child: Center(child: leading),
                    ),
                  if (leading == null)
                    SizedBox(
                      width: 16.0,
                    ),
                  Expanded(
                    flex: 4,
                    child: Text(
                      title,
                      style: titleColor == null
                          ? StreamChatTheme.of(context).textTheme.bodyBold
                          : StreamChatTheme.of(context)
                              .textTheme
                              .bodyBold
                              .copyWith(
                                color: titleColor,
                              ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: trailing ?? Container(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}