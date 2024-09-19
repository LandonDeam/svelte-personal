<script>
  import Slideshow from '../Slideshow.svelte'; // Adjust the path as necessary

  let aboutMe1 = "I'm a dev that's way into a ton of topics such as Dev Ops, Machine Learning, Cyber Security, Statistics, Audio, Video, Photography, and a whole lot more. I'm even running this website on my personal desktop running Arch Linux through nginx right now!";
  let aboutMe2 = "A lot of my personal projects are more oriented towards what works for my setup, but I really do want the opportunity to make things that work across many devices and platforms.";
  let aboutMe3 = "Enjoy a slideshow of some of my pictures I've taken in the last year :)"

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
    <p>{aboutMe1}<br><br>{aboutMe2}<br><br>{aboutMe3}</p>
  </section>

  <Slideshow {images} />
</main>

<style>
  .links-container {
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: white; /* White background for the links section */
    border-radius: 80px; /* Rounded edges */
    padding: 0px; /* Padding for spacing */
    box-shadow: 0 4px 10px rgba(255, 255, 255, 0.25); /* Subtle shadow */
    margin: 5px auto; /* Margin for spacing */
    max-width: 400px;
  }

  .links {
    display: flex;
    justify-content: center;
  }

  .icon {
    height: 40px; /* Adjust size as needed */
    margin: 0 10px; /* Space between icons */
  }

  .about {
    max-width: 615px;
    width: 100%;
    margin: 20px auto;
    padding: 10px;
    border: 1px solid #333; /* Dark border */
    border-radius: 5px;
    text-align: center;
    background-color: #1e1e1e; /* Slightly lighter background for the about section */
    box-shadow: -1px 4px 10px rgba(255, 255, 255, 0.2); /* Subtle shadow */
    box-sizing: border-box; /* Include padding in total width calculation */
  }

  @media (max-width: 600px) {
    .about {
      padding: 15px; /* Adjust padding for mobile */
      max-width: 90%; /* Limit max-width for mobile */
    }

    .links-container {
      padding: 10px;
      max-width: 70%;
    }
  }
</style>