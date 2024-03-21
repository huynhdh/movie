import 'package:ferry/ferry.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:movie/constants.dart';
import 'package:movie/data/remote/graphql/__generated__/schema.schema.gql.dart';

final graphqlClientProvider = Provider((_) => client);

final link = HttpLink(Constants.graphqlEndpoint);

final cache = Cache(possibleTypes: possibleTypesMap);

final client = Client(link: link, cache: cache);
