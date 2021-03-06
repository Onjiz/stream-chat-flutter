import 'package:flutter/material.dart';
import 'package:stream_chat_flutter_core/stream_chat_flutter_core.dart';
import 'package:url_launcher/url_launcher.dart';

import '../stream_chat_flutter.dart';
import 'stream_svg_icon.dart';

Future<void> launchURL(BuildContext context, String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    // ignore: deprecated_member_use
    Scaffold.of(context).showSnackBar(
      SnackBar(
        content: Text('Cannot launch the url'),
      ),
    );
  }
}

Future<bool> showConfirmationDialog(
  BuildContext context, {
  String title,
  Widget icon,
  String question,
  String okText,
  String cancelText,
}) {
  return showModalBottomSheet(
      backgroundColor: StreamChatTheme.of(context).colorTheme.white,
      context: context,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(16.0),
        topRight: Radius.circular(16.0),
      )),
      builder: (context) {
        final effect = StreamChatTheme.of(context).colorTheme.borderTop;
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 26.0),
            if (icon != null) icon,
            SizedBox(height: 26.0),
            Text(
              title,
              style: StreamChatTheme.of(context).textTheme.headlineBold,
            ),
            SizedBox(height: 7.0),
            Text(
              question,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 36.0),
            Container(
              color: effect.color.withOpacity(effect.alpha ?? 1),
              height: 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  child: Text(
                    cancelText,
                    style: StreamChatTheme.of(context)
                        .textTheme
                        .bodyBold
                        .copyWith(
                            color: StreamChatTheme.of(context)
                                .colorTheme
                                .black
                                .withOpacity(0.5)),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                FlatButton(
                  child: Text(
                    okText,
                    style: StreamChatTheme.of(context)
                        .textTheme
                        .bodyBold
                        .copyWith(
                            color: StreamChatTheme.of(context)
                                .colorTheme
                                .accentRed),
                  ),
                  onPressed: () {
                    Navigator.pop(context, true);
                  },
                ),
              ],
            ),
          ],
        );
      });
}

Future<bool> showInfoDialog(
  BuildContext context, {
  String title,
  Widget icon,
  String question,
  String okText,
  StreamChatThemeData theme,
}) {
  return showModalBottomSheet(
    backgroundColor:
        theme.colorTheme.white ?? StreamChatTheme.of(context).colorTheme.white,
    context: context,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
      topLeft: Radius.circular(16.0),
      topRight: Radius.circular(16.0),
    )),
    builder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 26.0,
          ),
          if (icon != null) icon,
          SizedBox(
            height: 26.0,
          ),
          Text(
            title,
            style: theme.textTheme.headlineBold ??
                StreamChatTheme.of(context).textTheme.headlineBold,
          ),
          SizedBox(
            height: 7.0,
          ),
          Text(question),
          SizedBox(
            height: 36.0,
          ),
          Container(
            color: theme.colorTheme.black.withOpacity(.08) ??
                StreamChatTheme.of(context).colorTheme.black.withOpacity(.08),
            height: 1.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                child: Text(
                  okText,
                  style: TextStyle(
                      color: theme.colorTheme.black.withOpacity(0.5) ??
                          StreamChatTheme.of(context)
                              .colorTheme
                              .black
                              .withOpacity(0.5),
                      fontWeight: FontWeight.w400),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        ],
      );
    },
  );
}

/// Get random png with initials
String getRandomPicUrl(User user) =>
    'https://getstream.io/random_png/?id=${user.id}&name=${user.name}';

/// Get websiteName from [hostName]
String getWebsiteName(String hostName) {
  switch (hostName) {
    case 'reddit':
      return 'Reddit';
    case 'youtube':
      return 'Youtube';
    case 'wikipedia':
      return 'Wikipedia';
    case 'twitter':
      return 'Twitter';
    case 'facebook':
      return 'Facebook';
    case 'amazon':
      return 'Amazon';
    case 'yelp':
      return 'Yelp';
    case 'imdb':
      return 'IMDB';
    case 'pinterest':
      return 'Pinterest';
    case 'tripadvisor':
      return 'TripAdvisor';
    case 'instagram':
      return 'Instagram';
    case 'walmart':
      return 'Walmart';
    case 'craigslist':
      return 'Craigslist';
    case 'ebay':
      return 'eBay';
    case 'linkedin':
      return 'LinkedIn';
    case 'google':
      return 'Google';
    case 'apple':
      return 'Apple';
    default:
      return null;
  }
}

///
String getSizeText(int bytes) {
  if (bytes == null) {
    return 'Size N/A';
  }

  if (bytes <= 1000) {
    return '$bytes bytes';
  } else if (bytes <= 100000) {
    return '${(bytes / 1000).toStringAsFixed(2)} KB';
  } else {
    return '${(bytes / 1000000).toStringAsFixed(2)} MB';
  }
}

///
StreamSvgIcon getFileTypeImage(String type) {
  switch (type) {
    case '7z':
      return StreamSvgIcon.filetype7z();
      break;
    case 'csv':
      return StreamSvgIcon.filetypeCsv();
      break;
    case 'doc':
      return StreamSvgIcon.filetypeDoc();
      break;
    case 'docx':
      return StreamSvgIcon.filetypeDocx();
      break;
    case 'html':
      return StreamSvgIcon.filetypeHtml();
      break;
    case 'md':
      return StreamSvgIcon.filetypeMd();
      break;
    case 'odt':
      return StreamSvgIcon.filetypeOdt();
      break;
    case 'pdf':
      return StreamSvgIcon.filetypePdf();
      break;
    case 'ppt':
      return StreamSvgIcon.filetypePpt();
      break;
    case 'pptx':
      return StreamSvgIcon.filetypePptx();
      break;
    case 'rar':
      return StreamSvgIcon.filetypeRar();
      break;
    case 'rtf':
      return StreamSvgIcon.filetypeRtf();
      break;
    case 'tar':
      return StreamSvgIcon.filetypeTar();
      break;
    case 'txt':
      return StreamSvgIcon.filetypeTxt();
      break;
    case 'xls':
      return StreamSvgIcon.filetypeXls();
      break;
    case 'xlsx':
      return StreamSvgIcon.filetypeXlsx();
      break;
    case 'zip':
      return StreamSvgIcon.filetypeZip();
      break;
    default:
      return StreamSvgIcon.filetypeGeneric();
      break;
  }
}
