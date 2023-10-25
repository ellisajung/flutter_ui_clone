import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  //커스터마이징: 통화이름, 통화량, 통화코드, 통화아이콘
  final String name, code, amount;
  final IconData icon;
  //커스터마이징 심화1: 컬러
  //conditional ? true : false
  final bool isInverted;
  final _blackColor = const Color(0xFF202123);
  //커스터마이징 심화2: 카드 겹치기(카드 이동하기)
  //연산코드 작성
  final int order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -20 * (order - 1)),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: isInverted ? _blackColor : Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 20,
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Transform.scale(
                scale: 2,
                child: Transform.translate(
                  offset: const Offset(5, 12),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 88,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}



/**커스터마이징 전 코드 */

// Container(
//   clipBehavior: Clip.hardEdge,
//   decoration: BoxDecoration(
//     color: const Color(0xFF202123),
//     borderRadius: BorderRadius.circular(20),
//   ),
//   child: Padding(
//     padding:
//         const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
//     child: Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Text(
//               'Euro',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 32,
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   '6 428',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 22,
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 10,
//                 ),
//                 Text(
//                   'EUR',
//                   style: TextStyle(
//                     color: Colors.white.withOpacity(0.8),
//                     fontSize: 20,
//                   ),
//                 ),
//               ],
//             )
//           ],
//         ),
//         Transform.scale(
//           scale: 2,
//           child: Transform.translate(
//             offset: const Offset(5, 12),
//             child: const Icon(
//               Icons.euro_symbol,
//               color: Colors.white,
//               size: 88,
//             ),
//           ),
//         )
//       ],
//     ),
//   ),
// ),


/**커스터마이징 심화2 전 코드 */

// const CurrencyCard(
//   name: 'Euro',
//   code: 'EUR',
//   amount: '6 428',
//   icon: Icons.euro_symbol,
//   isInverted: false,
//   order: 1,
// ),
// Transform.translate(
//   offset: const Offset(0, -20),
//   child: const CurrencyCard(
//     name: 'Dollar',
//     code: 'USD',
//     amount: '55 622',
//     icon: Icons.attach_money,
//     isInverted: true,
//     order: 2,
//   ),
// ),
// Transform.translate(
//   offset: const Offset(0, -40),
//   child: const CurrencyCard(
//     name: 'Rupee',
//     code: 'INR',
//     amount: '28 981',
//     icon: Icons.currency_rupee_outlined,
//     isInverted: false,
//     order: 3,
//   ),
// )
