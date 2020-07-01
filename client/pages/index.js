import axios from 'axios'

const Home = ({ currentSeason }) => {
  try{
    axios.get('/api/seasons/current');
  } catch {
    console.log('oi ?')
  }
  console.log(currentSeason);
  return (
    <div className="container">
      <h1> Liga PGE</h1>
    </div>
  )
};

// this one runs on server
Home.getInitialProps = async () => {
  if (typeof window === 'undefined') {
    console.log('server')
    try {
      const response = await axios.get(
        'http://ingress-nginx-controller.ingress-nginx.svc.cluster.local/api/seasons/current'
      )
    } catch {
      console.log('error')
    }
  } else {
    console.log('client')
  }

  // return response.data;
  return {};
};

export default Home;