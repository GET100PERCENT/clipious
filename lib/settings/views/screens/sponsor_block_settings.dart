import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:invidious/settings/states/sponsor_block_settings.dart';
import 'package:invidious/videos/models/sponsor_segment_types.dart';
import 'package:settings_ui/settings_ui.dart';

import 'settings.dart';

@RoutePage()
class SponsorBlockSettingsScreen extends StatelessWidget {
  const SponsorBlockSettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var locals = AppLocalizations.of(context)!;
    ColorScheme colorScheme = Theme.of(context).colorScheme;
    SettingsThemeData theme = settingsTheme(colorScheme);

    return BlocProvider(
      create: (BuildContext context) => SponsorBlockCubit(0),
      child: BlocBuilder<SponsorBlockCubit, int>(
        builder: (context, _) {
          var cubit = context.read<SponsorBlockCubit>();
          return Scaffold(
              appBar: AppBar(
                backgroundColor: colorScheme.background,
                scrolledUnderElevation: 0,
                title: const Text('SponsorBlock'),
              ),
              backgroundColor: colorScheme.background,
              body: SafeArea(
                bottom: false,
                child: SettingsList(lightTheme: theme, darkTheme: theme, sections: [
                  SettingsSection(
                      title: Text(locals.sponsorBlockSettingsQuickDescription),
                      tiles: SponsorSegmentType.values
                          .map((t) => SettingsTile.switchTile(
                                initialValue: cubit.value(t),
                                onToggle: (bool value) => cubit.setValue(t, value),
                                title: Text(SponsorSegmentType.getLabel(t, locals)),
                                description: Text(SponsorSegmentType.getDescription(t, locals)),
                              ))
                          .toList()),
                ]),
              ));
        },
      ),
    );
  }
}
