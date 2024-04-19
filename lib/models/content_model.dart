class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({ required this.image,  required this.title,  required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Welcome to ',
    image: 'assets/Onboarding1.svg',
    discription:' ANTI-AI App '
    
  ),
  UnbordingContent(
    title: 'Unmasking the Unreal:',
    image: 'assets/Onboarding2.svg',
    discription:' Where truth meets technology '
  ),
  UnbordingContent(
    title: 'Through the lens of truth: ',
    image: 'assets/Onboarding3.svg',
    discription: 'Expose the real, eliminate the fake.'
  ),
];