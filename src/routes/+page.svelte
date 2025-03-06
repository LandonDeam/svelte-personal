<svelte:head>
    <link rel="stylesheet" href="/homePage.css" />
</svelte:head>

<script>
  import Slideshow from '../Slideshow.svelte'; // Adjust the path as necessary

  let images = [
    '/images/31209504_Unknown.jpeg',
    '/images/32260720_Unknown.jpeg',
    '/images/33048208_Unknown.jpeg',
    '/images/33048624_Unknown.jpeg',
    '/images/33049920_Unknown.jpeg',
    '/images/33312688_Unknown.jpeg',
    '/images/33312928_Unknown.jpeg',
    '/images/34100496_Unknown.jpeg',
    '/images/34100736_Unknown.jpeg',
    '/images/34100768_Unknown.jpeg',
    '/images/34100896_Unknown.jpeg',
    '/images/34101024_Unknown.jpeg'
  ];
</script>

<main>
  <h1>Welcome to my website!</h1>

  <div class="links-container">
    <div class="links">
      <a class="link" href="https://github.com/LandonDeam" type="image/x-icon" target="_blank">
        <img src="https://github.githubassets.com/favicons/favicon.svg" alt="GitHub" class="icon">
      </a>
      <a class="link" href="https://www.linkedin.com/in/landon-deam" target="_blank">
        <img src="https://upload.wikimedia.org/wikipedia/commons/0/01/LinkedIn_Logo.svg" alt="LinkedIn" class="icon">
      </a>
    </div>
  </div>

  <section class="about">
    <h2>About</h2>
    <p>
      I'm a dev that's way into a ton of topics such as <b>Dev Ops, Machine Learning, Cyber Security, Statistics, Audio, Video, Photography</b>, and a whole lot more. I'm even running this website on my personal desktop (running <b>Arch Linux</b>) through <b>nginx</b> right now!
      <br><br>
      A lot of my personal projects are more oriented towards what works for my setup, but I really do want the opportunity to make things that work across many devices and platforms.
      <br><br>
      Enjoy a slideshow of some of my pictures I've taken over the last year :)
    </p>
  </section>

  <Slideshow {images} />
</main>
