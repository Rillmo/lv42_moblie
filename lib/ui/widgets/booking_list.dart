import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BookingListWidget extends ConsumerWidget {
  const BookingListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all()),
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor),
                          shadowColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColor.withOpacity(0.5)),
                          elevation: MaterialStateProperty.all(5)),
                      child: const Text(
                        'XBOX',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'BowlbyOne',
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.zero),
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColorDark),
                          shadowColor: MaterialStateProperty.all(
                              Theme.of(context)
                                  .primaryColorDark
                                  .withOpacity(0.5)),
                          elevation: MaterialStateProperty.all(5)),
                      child: const Text(
                        'SWITCH',
                        style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'BowlbyOne',
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              Theme.of(context).primaryColorLight),
                          shadowColor: MaterialStateProperty.all(
                              Theme.of(context)
                                  .primaryColorLight
                                  .withOpacity(0.5)),
                          elevation: MaterialStateProperty.all(5)),
                      child: const Text(
                        'PS5',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: 'BowlbyOne',
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: ListView())
          ],
        ),
      ),
    );
  }
}
