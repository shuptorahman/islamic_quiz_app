import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary({
    super.key,
    required this.summaryData,
  });

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children:
              summaryData.map((data) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(
                        vertical: 8,
                      ),
                  child: Row(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 30,

                        alignment:
                            Alignment.center,
                        decoration: BoxDecoration(
                          color:
                              data['user_answer'] ==
                                      data['correct_answer']
                                  ? const Color.fromARGB(
                                    255,
                                    10,
                                    154,
                                    231,
                                  )
                                  : const Color.fromARGB(
                                    255,
                                    244,
                                    74,
                                    156,
                                  ),
                          borderRadius:
                              BorderRadius.circular(
                                100,
                              ),
                        ),
                        child: Text(
                          ((data['question_index']
                                      as int) +
                                  1)
                              .toString(),
                          style: GoogleFonts.lato(
                            fontWeight:
                                FontWeight.bold,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment
                                  .start,
                          children: [
                            Text(
                              data['question']
                                  as String,
                              style:
                                  GoogleFonts.lato(
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                    fontSize: 16,
                                    color:
                                        Colors
                                            .white,
                                  ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              data['user_answer']
                                  as String,
                              style:
                                  GoogleFonts.lato(
                                    color:
                                        Colors
                                            .white,
                                  ),
                            ),
                            Text(
                              data['correct_answer']
                                  as String,
                              style:
                                  GoogleFonts.lato(
                                    color:
                                        Colors
                                            .green,
                                    fontWeight:
                                        FontWeight
                                            .bold,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
