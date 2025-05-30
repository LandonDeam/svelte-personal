<svelte:head>
    <link rel="stylesheet" href="/home.css">
    <title>About</title>
</svelte:head>

<script>
import Slideshow from '../about/Slideshow.svelte'; // Adjust the path as necessary

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
    <section class="about">
        <h2>Who I am</h2>
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