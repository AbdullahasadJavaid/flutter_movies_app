# Flutter_movie_app

A new Flutter project.

## dependencies I used

 page_transition: ^2.0.9
 
  provider: ^6.0.5
 
  animated_text_kit: ^4.2.2
  
  carousel_slider: ^4.2.1
  
  dots_indicator: ^3.0.0
  
  sliding_up_panel: ^2.0.0+1
  
## Pass through pushName arguments
      onTap: () {
          Navigator.pushNamed(
            context,
            DetialScreen.routeName,
            arguments: id,
          );
        },
  
  ## Accepting data to new Screen
     final String movieId =
        ModalRoute.of(context)!.settings.arguments.toString();
    final selectedmovie = movielist.firstWhere(
      (move) => move.id == movieId,
    );
  ()  
    ![Uploading Screenshot_1689935581.png…]
  ()
    ![Uploading Screenshot_1689769865.png…]()
    ![Uploading Screenshot_1689935581.png…]()

![Uploading Screenshot_1689935595.png…]()

